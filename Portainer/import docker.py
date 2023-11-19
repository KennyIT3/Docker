import docker

def start_container(image_name, container_name):
    client = docker.from_env()

    try:
        container = client.containers.run(image_name, detach=True, name=container_name)
        print(f"Container {container_name} started successfully. Container ID: {container.id}")
    except docker.errors.APIError as e:
        print(f"Error starting container: {e}")
    finally:
        client.close()

# Example usage:
start_container('nginx:latest', 'my_nginx_container')
