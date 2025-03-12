<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Password</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script>
      function togglePassword(id, toggleId) {
        const input = document.getElementById(id);
        const toggleIcon = document.getElementById(toggleId);
        if (input.type === "password") {
          input.type = "text";
          toggleIcon.classList.remove("bi-eye");
          toggleIcon.classList.add("bi-eye-slash");
        } else {
          input.type = "password";
          toggleIcon.classList.remove("bi-eye-slash");
          toggleIcon.classList.add("bi-eye");
        }
      }
    </script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
  </head>
  <body class="d-flex justify-content-center align-items-center vh-100">
  <div class="background-overlay"></div>
    <div class="container content-container">
      <div class="row justify-content-center">
        <div class="col-md-5">
          <div class="text-center p-3 mb-3">
            <h5 class="mb-0">Reset <strong>Your Password</strong></h5>
          </div>
          <div class="card shadow" style="background-color: #F6F6F6;">
            <div class="card-body">
              <form action="${url.loginAction}" method="post">
                <#if message?has_content>
                  <#assign alertClass="alert-success">
                    <#if message.type=="error">
                      <#assign alertClass="alert-danger">
                    </#if>
                    <div class="alert ${alertClass} text-center"> ${message.summary} </div>
                </#if>
                <!-- New Password Field -->
                <div class="mb-3 position-relative">
                  <label for="password-new" class="form-label">New Password</label>
                  <div class="input-group">
                    <input type="password" name="password-new" id="password-new" class="form-control" required>
                    <button type="button" class="btn btn-outline-secondary" onclick="togglePassword('password-new', 'togglePasswordIcon')">
                      <i id="togglePasswordIcon" class="bi bi-eye"></i>
                    </button>
                  </div>
                </div>
                <!-- Confirm Password Field -->
                <div class="mb-3 position-relative">
                  <label for="password-confirm" class="form-label">Confirm New Password</label>
                  <div class="input-group">
                    <input type="password" name="password-confirm" id="password-confirm" class="form-control" required>
                    <button type="button" class="btn btn-outline-secondary" onclick="togglePassword('password-confirm', 'toggleConfirmIcon')">
                      <i id="toggleConfirmIcon" class="bi bi-eye"></i>
                    </button>
                  </div>
                </div>
                <!-- Sign out from other devices option -->
                <div class="form-check mb-3">
                  <input class="form-check-input" type="checkbox" id="logout-sessions" name="logout-sessions">
                  <label class="form-check-label" for="logout-sessions"> Sign out from all other devices </label>
                </div>
                <button type="submit" class="btn btn-primary w-100 rounded-pill"> Update Password </button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>