# -*- encoding : utf-8 -*-
Administrator.create!(account: 'admin', password: '123456', password_confirmation: '123456', name: '管理员', available: true)
Page.create!([
  { code: 'home', name: '首页' },
  { code: 'about', name: '关于裕福', zh_content: '裕福实业投资有限公司(简称“裕福实业),总部位于北京,注册资本10000万元,目前拥有裕福支付有限公司、裕福软件有限公司、裕福文化传媒有限公司等3家全资子公司,并与中石化共同控股中石化裕福支付技术有限公司。业务范围涉及:实业投资;投资管理;企业管理;技术开发;技术服务;应用软件服务;为企事 业单位提供管理、策划、咨询等服务。裕福实业本着“以人为本,群策群力,教学相长”的价值观,凭借优良的资产、优秀的管理能力、专业的市场运作,愿与社会各界携手合作,共同发展!' },
  { code: 'contact', name: '联系我们' }
])