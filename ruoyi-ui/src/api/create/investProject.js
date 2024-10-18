import request from '@/utils/request'

export function getTable(projectId) {
    return request({
      url: '/newproject/investdevelop',
      method: 'get',
      params:projectId
    })
  }

  // 保存数据
export function saveInfo(data) {
  return request({
    url: '/newproject/savePersonInfo',
    method: 'post',
    data: data
  })
}

export function getSpecification(productName){
  return request({
    url: '/newproject/product/getSpecification',
    method: 'get',
    params: productName
  })
}

export function saveTableData(saveData,projectId){
  return request({
    url:'/newproject/product/save/'+projectId,
    method:'post',
    data:saveData
  })
}

export function getProductCode(productName,specification){
  return request({
    url: '/newproject/product/getProductCode',
    method:'get',
    params:productName,specification
  })
}

export function list(projectId,pageIndex){
  return request({
    url:'/newproject/product/list',
    method:'get',
    params:projectId,pageIndex
  })
}

export function delProduct(delproductCodes,projectId){
  return request({
    url:'/newproject/product/delete/'+projectId,
    method:'post',
    data:delproductCodes
  })
}