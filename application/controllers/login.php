<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class login extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct()
	{
			parent::__construct();
			//untuk bikin dari view manggil model 'My_Model.php'
			$this->load->model('model');
	}

	public function index() { $data = $this->model->getData('tt_barang');
		$this->load->view('home', array('data' => $data));  }

	public function login() //untuk login
	{
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$isLogin = $this->model->login_authen($username, $password);
		if($isLogin) $isAdm = $this->model->login_author($username, $password);
		$cek = $this->model->cek($username,$password);
		if($cek ->num_rows() ==1) {	
			if ($isLogin == true && $isAdm == '1') {
				foreach ($cek -> result() as $data) {
					$sess_data['username'] = $data->username;
					$sess_data['group'] = $data->privileges;
					$this->session->set_userdata($sess_data);
				}
				$this->load->view('admin/adheader');
				$this->load->view('admin/adnavbar');
				$this->load->view('admin/adleft');
				$this->load->view('admin/adm');
			}
			elseif ($isLogin == true && $isAdm == '-1') {
				$updateStatus=array("status"=>"login");
				$this->load->view('unactive');
			}
			elseif($isLogin == true) {
				foreach ($cek -> result() as $data) {
					$sess_data['username'] = $data->username;
					$this->session->set_userdata($sess_data);
				}
				$updateStatus=array("status"=>"login");
				$this->model->update_data_login($username, $password, $updateStatus);
				$this->load->view('user/header');
				$this->load->view('user/navbar');
				$this->load->view('user/container');
				$this->load->view('user/portofolio');
				$this->load->view('user/kontak');
				$this->load->view('user/footer');
			}
		}
		else {
			$this->session->set_flashdata('pesan', 'user / pass ilegal !');
			$this->load->view('user/formLogin');
			echo "<script>alert('Username/Password Anda Salah')</script>";
		}
	}

	public function logout()
	{
		$this->session->sess_destroy();
		//redirect('home');
		//$updateStatus=array("status"=>"logout");
		//$this->model->login_state($username, $password, $updateStatus);
		$this->load->view('user/header');
			$this->load->view('user/top');
			$this->load->view('user/container');
			$this->load->view('user/portofolio');
			$this->load->view('user/kontak');
			$this->load->view('user/footer');
	}

	public function signin() { 
		$this->load->view('user/formLogin');
	}
	public function signup() { $this->load->view('signup'); }
	public function regis(){
		$this->load->view('user/register');
	}
	
}