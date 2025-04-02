<?php

class main {
    private ${config};

    public function __construct(${config} = []) {
        ${this}->config = array_merge([
            'debug' => true,
            'database' => 'sqlite:app.db'
        ], ${config});
    }

    public function run() {
        header('Content-Type: application/json');

        ${request_uri} = ${_SERVER}['REQUEST_URI'];
        ${request_method} = ${_SERVER}['REQUEST_METHOD'];

        if (${request_uri} === '/' && ${request_method} === 'GET') {
            echo json_encode([
                'message' => 'Welcome to run_backup-rev0.2 API',
                'version' => '1.0.0'
            ]);
        } elseif (${request_uri} === '/health' && ${request_method} === 'GET') {
            echo json_encode([
                'status' => 'healthy',
                'timestamp' => date('c')
            ]);
        } else {
            http_response_code(404);
            echo json_encode(['error' => 'Endpoint not found']);
        }
    }
}

// Usage
${app} = new main();
${app}->run();

?>

# Touch update: 1760999077
