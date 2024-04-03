# Base R Shiny image
FROM rocker/r-ver

# Working directory for any command that follows it in the Dockerfile.
WORKDIR /shiny-app

# Install R dependencies
RUN R -e "install.packages('shiny')"
RUN R -e "install.packages(c('dplyr', 'ggplot2', 'gapminder'))"

# Copy the Shiny app code
COPY app.R /home/shiny-app/app.R

# Expose the application port
EXPOSE 8080

# Run the R Shiny app
CMD Rscript /home/shiny-app/app.R