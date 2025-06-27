import argparse
import subprocess
import os
import sys

def main():
	parser = argparse.ArgumentParser(description="Run mris_preproc and mri_surf2surf for both hemispheres with specified parameters.")
	parser.add_argument('--subject', '-s', required=True, help='Subject name')
	parser.add_argument('--freesurfer-home', '-f', required=False, help='FREESURFER_HOME directory (optional)')
	parser.add_argument('--smoothness', '-w', type=int, required=True, help='FWHM smoothness (e.g., 20)')
	parser.add_argument('--surface-type', '-t', required=True, choices=['volume', 'thickness', 'area'],
						help='Surface type to use (volume, thickness, area)')
	args = parser.parse_args()

	# Set FREESURFER_HOME in environment only if provided
	if args.freesurfer_home:
		os.environ['FREESURFER_HOME'] = args.freesurfer_home
		os.chdir(args.freesurfer_home)
		
	os.chdir(args.subject)
	os.chdir("surf/")

	for hemi in ["lh", "rh"]:
		# Run mris_preproc
		preproc_out = f"{hemi}.{args.surface_type}.fsaverage.mgh"
		preproc_cmd = [
			"mris_preproc",
			"--s", args.subject,
			"--hemi", hemi,
			"--meas", args.surface_type,
			"--target", "fsaverage",
			"--out", preproc_out
		]
		print("Running command:", " ".join(preproc_cmd))
		try:
			result_preproc = subprocess.run(preproc_cmd, check=True, capture_output=True, text=True)
			print(result_preproc.stdout)
		except subprocess.CalledProcessError as e:
			print(f"Error running mris_preproc for {hemi}:\n", e.stderr, file=sys.stderr)
			sys.exit(e.returncode)

		# Run mri_surf2surf
		sval = preproc_out
		tval = f"{hemi}.{args.surface_type}.fwhm{args.smoothness}.fsaverage.mgh"
		surf2surf_cmd = [
			"mri_surf2surf",
			"--prune",
			"--s", "fsaverage",
			"--hemi", hemi,
			"--fwhm", str(args.smoothness),
			"--sval", sval,
			"--tval", tval,
			"--cortex"
		]
		print("Running command:", " ".join(surf2surf_cmd))
		try:
			result_surf2surf = subprocess.run(surf2surf_cmd, check=True, capture_output=True, text=True)
			print(result_surf2surf.stdout)
		except subprocess.CalledProcessError as e:
			print(f"Error running mri_surf2surf for {hemi}:\n", e.stderr, file=sys.stderr)
			sys.exit(e.returncode)

if __name__ == "__main__":
	main()