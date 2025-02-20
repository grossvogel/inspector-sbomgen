# Inspector SBOMgen

This is just a Dockerfile wrapping the tool provided by Amazon and explained here:

https://docs.aws.amazon.com/inspector/latest/user/sbom-generator.html

## Instructions

1. Clone the repo
2. Put the software to analyze in the `artifacts/` folder
3. Run the script with `./run.sh`
4. View the software bill of materials in `output/sbom.json`
