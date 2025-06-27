import argparse
import os
import re

# Mapping of timepoint string to numeric code
TIMEPOINT_CODE = {
	"Baseline": "0",
	"MidSleepRestriction": "1",
	"EndSleepRestriction": "2",
	"AcuteRecovery": "3",
	"LongtermRecovery": "4"
}

def parse_filename(filename, hemi):
	# Pattern: {hemi}.{subject}_{timepoint}.long.{subject}_{measure}_{fwhm}.gii
	# Example: lh.sub-10_AcuteRecovery.long.sub-10_thickness_10.gii
	pattern = re.compile(
		rf"^{hemi}\.([^_]+)_([^\.]+)\.long\.([^_]+)_([^_]+)_([^.]+)\.gii$"
	)
	m = pattern.match(filename)
	if not m:
		return None
	subject = m.group(1)
	timepoint = m.group(2)
	measure = m.group(4)
	fwhm = m.group(5)
	# Numerical code for timepoint
	time_code = TIMEPOINT_CODE.get(timepoint, "NA")
	return (subject, timepoint, time_code, measure, fwhm, filename)

def main():
	parser = argparse.ArgumentParser(
		description="Build AFNI dataTable for 3dLME/3dMVM from GIFTI filenames, with time coding."
	)
	parser.add_argument(
		"-d", "--directory",
		default=".",
		help="Directory to scan (default: current directory)"
	)
	parser.add_argument(
		"--hemi",
		default="lh",
		choices=["lh", "rh"],
		help="Hemisphere to scan (lh or rh, default: lh)"
	)
	parser.add_argument(
		"-o", "--output",
		default="datatable.txt",
		help="Output datatable file (default: datatable.txt)"
	)
	args = parser.parse_args()

	rows = []
	for fname in sorted(os.listdir(args.directory)):
		if not fname.endswith(".gii"):
			continue
		parsed = parse_filename(fname, args.hemi)
		if parsed:
			rows.append(parsed)
		else:
			print(f"Skipping unmatched file: {fname}")

	# Sort by subject, then time, then measure, then fwhm
	rows.sort(key=lambda x: (x[0], x[2], x[3], x[4]))

	header = ["Subj", "timepoint", "time", "measure", "fwhm", "InputFile"]
	outpath = os.path.join(args.directory, args.output)
	with open(outpath, "w", newline="") as f:
		# Write header with trailing backslash
		f.write('\t'.join(header) + ' \\\n')
		for row in rows:
			# Write each data row with trailing backslash
			f.write('\t'.join(row) + ' \\\n')

	print(f"DataTable written to {outpath} ({len(rows)} rows)")

if __name__ == "__main__":
	main()