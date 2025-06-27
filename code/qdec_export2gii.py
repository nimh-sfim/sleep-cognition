import argparse
import os
import subprocess
import re

def remove_middle_hemi(filepath, hemi):
	"""
	Rename file if it contains a '_{hemi}_' after the subject.
	Keeps the leading lh./rh., removes the _lh_/_rh_ after subject.
	"""
	dirname, filename = os.path.split(filepath)
	print(f"Checking for middle hemisphere in file: {filename}")
	# Corrected regex: non-greedy match for subject to allow periods
	pattern = rf"^({hemi})\.(.+?)_{hemi}_(.+)$"
	match = re.match(pattern, filename)
	if match:
		new_filename = f"{hemi}.{match.group(2)}_{match.group(3)}"
		old_filepath = os.path.join(dirname, filename)
		new_filepath = os.path.join(dirname, new_filename)
		if os.path.exists(old_filepath):
			print(f"Renaming {old_filepath} -> {new_filepath}")
			os.rename(old_filepath, new_filepath)
			return new_filepath
		else:
			print(f"File not found for renaming: {old_filepath}")
	else:
		print(f"No match for {filename} with pattern {pattern}")
	return filepath

def main():
	parser = argparse.ArgumentParser(
		description="Export a FreeSurfer metric/scalar for multiple FWHM smoothness values."
	)
	parser.add_argument(
		"-s", "--subject",
		required=True,
		help="FreeSurfer subject number (e.g. sub-01)"
	)
	parser.add_argument(
		"--subjects-dir",
		required=False,
		default=None,
		help="FreeSurfer SUBJECTS_DIR (full path). Optional: defaults to current directory."
	)
	parser.add_argument(
		"-m", "--measure",
		required=True,
		choices=["thickness", "area", "volume"],
		help="Metric/scalar to export (thickness, area, volume)"
	)
	parser.add_argument(
		"--fwhm",
		required=True,
		nargs='+',
		help="Smoothness FWHM values (can provide multiple, space-separated, e.g. 5 10 20)"
	)
	parser.add_argument(
		"-o", "--output-dir",
		required=True,
		help="Directory to export the .gii files"
	)
	parser.add_argument(
		"--surface",
		choices=["white", "smoothwm", "pial"],
		default="white",
		help="Surface to use for geometry (default: white)"
	)

	args = parser.parse_args()

	# Use current directory if subjects-dir is not provided
	subjects_dir = args.subjects_dir if args.subjects_dir else os.getcwd()

	# Validate output directory
	if not os.path.exists(args.output_dir):
		os.makedirs(args.output_dir)

	hemis = ['lh', 'rh']
	subject_path = os.path.join(subjects_dir, args.subject)
	fsaverage_path = os.path.join(subjects_dir, "fsaverage")

	for hemi in hemis:
		for fwhm in args.fwhm:
			# Input metric file for subject
			input_mgh = os.path.join(
				subject_path, "surf", f"{hemi}.{args.measure}.fwhm{fwhm}.fsaverage.mgh"
			)
			# Surface geometry file from fsaverage
			input_surface = os.path.join(
				fsaverage_path, "surf", f"{hemi}.{args.surface}"
			)

			# Output filename (with possible redundant hemisphere in the middle)
			output_gii = os.path.join(
				args.output_dir, f"{hemi}.{args.subject}_{hemi}_{args.measure}_{fwhm}.gii"
			)

			# Print output directory contents before
			print(f"Before export, contents of {args.output_dir}: {os.listdir(args.output_dir)}")
			# Build command as a list for subprocess
			command = [
				"mris_convert", "-c", input_mgh, input_surface, output_gii
			]
			print("Running command:", " ".join(command))
			try:
				subprocess.run(command, check=True)
				# Print output directory contents after export
				print(f"After export, contents of {args.output_dir}: {os.listdir(args.output_dir)}")
				# After export, rename if needed to remove the _{hemi}_ after subject
				remove_middle_hemi(output_gii, hemi)
				# Print output directory contents after rename
				print(f"After rename, contents of {args.output_dir}: {os.listdir(args.output_dir)}")
			except subprocess.CalledProcessError as e:
				print(f"Error running command for {hemi}, FWHM {fwhm}: {e}")

if __name__ == "__main__":
	main()