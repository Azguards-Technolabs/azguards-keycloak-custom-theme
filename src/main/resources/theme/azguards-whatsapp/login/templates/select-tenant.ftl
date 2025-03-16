<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${url.resourcesPath}/css/style.css">
  </head>
  <body class="d-flex justify-content-center align-items-center vh-100">
    <div class="background-overlay"></div>
    <div class="container content-container">
      <div class="row justify-content-center">
        <div class="col-md-5 mb-3">
          <div class="text-center p-3 mb-3">
            <h5 class="mb-0 header-section">Select <strong>Account</strong></h5>
          </div>
          <div class="row">
            <div class="card tenant-container">
              <#if data.tenants??>
                <#list data.tenants as tenant>
                  <div class="col-md-12">
                    <form action="${url.loginAction}" method="post">
                      <input type="hidden" name="tenant" value="${tenant.id}">
                      <button type="submit" class="tenant-card w-100 border-0">
                        <div class="tenant-logo">
                          <img src="${url.resourcesPath}/img/azguard.png">
                        </div>
                       <div class="tenant-info">
                            <div class="name">${tenant.name}</div>
                            <div class="role">Account Manager</div>
                        </div>
                      </button>
                    </form>
                  </div>
                </#list>
                <#else>
                  <p>No tenants available</p>
              </#if>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>