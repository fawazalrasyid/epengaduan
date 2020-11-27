<div class="container">

  <!-- Outer Row -->
  <div class="row justify-content-center align-items-center" style="height: 100vh;">

    <div class="col-lg-6">
      <div class="card o-hidden border-0">
        <div class="card-body p-0">
          <!-- Nested Row within Card Body -->
          <div class="row">
            <div class="col-lg-12 mx-auto">
              <div class="p-5">
                <div class="text-center mb-5">
                  <img src="<?= base_url() ?>assets/backend/img/eP.svg" height="50" class='mb-3'>
                  <h3 class="h3 text-gray-900">Login</h3>
                  <p>Harap Login untuk melanjutkan.</p>
                </div>

                <?= validation_errors('<div class="alert alert-danger alert-dismissible fade show" role="alert">', '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>') ?>

                <?= $this->session->flashdata('msg'); ?>

                <?= form_open('Auth/LoginController', 'class="user"'); ?>
                <div class="form-group">
                  <input type="text" class="form-control form-control-user" id="username" name="username" placeholder="Username" autofocus value="<?= set_value('username') ?>">
                </div>
                <div class="form-group mb-5">
                  <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary btn-user btn-block mb-2">Login</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>

  </div>

</div>