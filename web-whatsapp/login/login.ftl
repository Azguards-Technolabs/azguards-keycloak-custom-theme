<!DOCTYPE html>
  <html lang="en">
    <head>
      <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
          <title>Login</title>

          <!-- Bootstrap CSS -->
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <link rel="stylesheet" href="${url.resourcesPath}/css/style.css">
            </head>
            <body class="d-flex justify-content-center align-items-center vh-100">

              <div class="container">
                <div class="row justify-content-center">
                  <div class="col-md-6">

                    <div class="text-center p-3 rounded bg-success bg-opacity-25 mb-3">
                      <h5 class="mb-0">Please <strong>LOGIN</strong> To Continue</h5>
                    </div>

                    <div class="card shadow" style="background-color: #F6F6F6;">
                      <div class="card-body">
                        <form action="${url.loginAction}" method="post">

                          <div class="mb-3">
                            <label for="username" class="form-label">Username</label>
                            <input type="text" id="username" name="username" class="form-control" required>
                          </div>

                          <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" id="password" name="password" class="form-control" required>
                          </div>

                          <button type="submit" class="btn btn-primary w-100 rounded-pill">
                            LOGIN <i class="fa fa-paper-plane ml-3" aria-hidden="true"></i>
                          </button>
                        </form>
                      </div>
                    </div>
                    <div class="text-center mt-3">
                      <a href="${url.loginResetCredentialsUrl}" class="text-decoration-none">Forgot Password</a><br>
                      <a href="${url.registrationUrl}" class="text-decoration-none">Create Account</a>
                    </div>

                  </div>
                </div>
              </div>
            </body>
          </html>