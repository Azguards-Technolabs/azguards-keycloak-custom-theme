<!DOCTYPE html>
  <html lang="en">
    <head>
      <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
            <link rel="stylesheet" href="${url.resourcesPath}/css/style.css">
            </head>
            <body class="d-flex justify-content-center align-items-center vh-100">
              <div class="container">


                <div class="row justify-content-center">
				  <div class="col-md-6 mb-3">
				    <div class="text-center p-3 rounded bg-success bg-opacity-25 mb-3">
                  <h5 class="mb-0">Please <strong>SELECT</strong> Businesses</h5>
                </div>
				<div class="row">
				
					<#if data.tenants??>
                    <#list data.tenants as tenant>
					<div class="col-md-3">
                      <form action="${url.loginAction}" method="post">
                        <input type="hidden" name="tenant" value="${tenant.id}">
                          <button type="submit" class="tenant-card w-100 border-0">
                            <span class="settings-icon">
                              <i class="bi bi-gear"></i>
                            </span>

                            <img class="tenant-logo">
                                <h5>${tenant.name}</h5>
                                <span class="plan-badge bg-danger text-white">
                                     Agent plan
                                </span>
                                <p class="text-muted mt-2">
                                    
                                </p>

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

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
          </body>
        </html>