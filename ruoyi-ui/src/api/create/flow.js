import request from '@/utils/request'

export function getTable(projectInfoId,pageIndex) {
  return request({
    url: '/flow/getStructure',
    method: 'post',  // 使用 POST 方法
    data: {          // 将数据放在请求体中
      "projectInfoId": projectInfoId,
      "pageIndex": pageIndex
    }
  });
}

// 保存数据
export function computeAndSave(tableDataToSave) {
  return request({
    url: '/flow/computeAndSave',
    method: 'post',
    data: tableDataToSave
  })
}
