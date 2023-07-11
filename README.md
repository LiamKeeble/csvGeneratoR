
# R Command-Line Application: Generate CSV with Normal Distributions

This R command-line application generates a CSV file containing data generated from normal distributions. It provides the flexibility to specify the details of the normal distributions, such as means and standard deviations, using command-line arguments.

## Prerequisites

Before running the application, make sure you have the following installed:

- R: The R programming language environment. You can download and install it from the [R Project website](https://www.r-project.org/).
- Required R packages: The application relies on the `tidyverse` and `optparse` packages. To install them, run the following commands in R:

    ```R
    install.packages("tidyverse")
    install.packages("optparse")
    ```

## Usage

1. Clone or download the source code files to your local machine.

2. Open a terminal or command prompt and navigate to the directory where the source code files are located.

3. Run the following command to execute the R script:

    ```shell
    Rscript generate_csv.R [options]
    ```

4. Optional command-line arguments:

    - `-m` or `--mean1`: The mean of the first normal distribution. Default: 0.
    - `-s` or `--sd1`: The standard deviation of the first normal distribution. Default: 1.
    - `-M` or `--mean2`: The mean of the second normal distribution. Default: 0.
    - `-S` or `--sd2`: The standard deviation of the second normal distribution. Default: 1.
    - `-n` or `--num_samples`: The number of samples to generate. Default: 10.

    **Example usage:**

    ```shell
    Rscript generate_csv.R --mean1=10 --sd1=2 --mean2=5000 --sd2=1000 --num_samples=100
    ```

    This command generates a CSV file named `output.csv` with 100 rows of data. The `Age` column is generated from a normal distribution with a mean of 10 and standard deviation of 2, while the `Salary` column is generated from a normal distribution with a mean of 5000 and standard deviation of 1000.

5. The generated CSV file will be saved in the same directory as the script file with the name `output.csv`.

## License

This project is licensed under the [MIT License](LICENSE).

---

Feel free to customize the README file as needed, and make sure to include any additional instructions or information that might be relevant to your specific use case.