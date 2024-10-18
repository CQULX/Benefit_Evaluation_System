import request from '@/utils/request'

export function getBase() {
  return request({
    url: '/flow/getStructure',
    method: 'get',  // 使用 POST 方法
  });
}

// 保存数据
export function getIncome(data) {
  return request({
    url: '/flow/getStructure',
    method: 'get',  // 使用 POST 方法
  })
}

// 提交info
export function saveInfo(data) {
  return request({
    url: '/flow/save',
    method: 'post',
    data: data
  })
}