<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  </head>
  <body class="d-flex justify-content-center align-items-center vh-100">
    <div class="background-overlay"></div>
    <div class="container content-container">
      <div class="row justify-content-center">
        <div class="col-md-5">
          <div class="text-center p-3 mb-3">
            <h5 class="mb-0 header-section">Reset <strong>Your Password</strong>
            </h5>
          </div>
          <div class="card shadow" style="background-color: #F8FCF4;">
            <div class="card-body">
              <form action="${url.loginAction}" method="post">
                <div class="mb-3">
                  <label for="username" class="form-label">Enter Email</label>
                  <input type="email" name="username" id="username" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-primary w-100 rounded-pill"> Send Reset Link </button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>