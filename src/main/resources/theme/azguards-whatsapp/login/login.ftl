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
  <div class="background-overlay"></div>
    <div class="container content-container">
      <div class="row justify-content-center">
        <div class="col-md-5">
          <div class="text-center p-3 mb-3">
            <h5 class="mb-0 header-section">Login to <strong>Agent Account</strong></h5>
          </div>
          <div class="card shadow" style="background-color: #F8FCF4">
            <div class="card-body">
              <form action="${url.loginAction}" method="post">
                <#if message?has_content>
                  <#assign alertClass="alert-success">
                    <#if message.type=="error">
                      <#assign alertClass="alert-danger">
                    </#if>
                    <div class="alert ${alertClass} text-center"> ${message.summary} </div>
                </#if>
                <div class="mb-3">
                  <label for="username" class="form-label">Username</label>
                  <input type="text" id="username" name="username" class="form-control" required>
                </div>
                <div class="mb-3">
                  <label for="password" class="form-label">Password</label>
                  <input type="password" id="password" name="password" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-primary w-100 rounded-pill">LOGIN
                </button>
              </form>
            </div>
          </div>
          <div class="text-center mt-3">
            <a href="${url.loginResetCredentialsUrl}" class="text-custom">Forgot Password</a>
            <br>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>