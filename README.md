
### Running the App Locally with Docker

1. Ensure Docker is installed and running on your system.
2. Build the Docker image:
    ```bash
    docker build -t serverless-movie-api:latest .
    ```
3. Run the Docker container:
    ```bash
    docker run -d -p 8000:8000 serverless-movie-api:latest
    ```
4. The API server will be accessible at `http://localhost:8000`.

### Running the App Locally Without Docker

1. Activate the virtual environment:
    ```bash
    source .venv/bin/activate  # On macOS/Linux
    .venv\Scripts\activate     # On Windows
    ```
2. Start the API server:
    ```bash
    python app.py
    ```
3. The API server will be accessible at `http://localhost:8000`.
