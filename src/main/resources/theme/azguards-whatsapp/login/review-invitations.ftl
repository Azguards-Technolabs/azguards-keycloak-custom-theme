<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="${url.resourcesPath}/css/style.css" />
    <style></style>
  </head>
  <body class="d-flex justify-content-center align-items-center vh-100">
    <div class="background-overlay"></div>
    <div class="container content-container">
      <div class="row justify-content-center">
        <div class="col-md-5">
          <div class="text-center p-3 mb-3">
            <h5 class="mb-0 header-section"> You Have <strong>New Invites</strong>
            </h5>
          </div>
          <div class="row">
            <div class="card tenant-container">
              <form action="${url.loginAction}" method="post">
                <#list data.tenants as tenant>
                  <div class="col-md-12">
                    <label for="tenant-${tenant.id}" class="form-check-label tenant-checkbox-label">
                      <div class="tenant-card w-100 border-0">
                        <div class="tenant-logo">
                          <img src="${url.resourcesPath}/img/azguard.png" alt="${tenant.name}" />
                        </div>
                        <div class="tenant-info">
                          <div class="name">${tenant.name}</div>
                          <div class="role">Account Manager</div>
                        </div>
                        <input id="tenant-${tenant.id}" name="tenants" type="checkbox" class="form-check-input checkbox-right" value="${tenant.id}" checked />
                      </div>
                    </label>
                  </div>
                </#list>
                <button type="submit" class="btn btn-primary w-100 rounded-pill"> ${msg("doAccept")} </button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>