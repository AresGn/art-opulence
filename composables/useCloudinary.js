export const useCloudinary = () => {
  const cloudName = 'dwsjriapi' // Cloud name Cloudinary configuré

  const getOptimizedImageUrl = (publicId, options = {}) => {
    const {
      width = 'auto',
      height = 'auto',
      crop = 'fill',
      quality = 'auto',
      format = 'auto'
    } = options

    const transformations = [
      `w_${width}`,
      `h_${height}`,
      `c_${crop}`,
      `q_${quality}`,
      `f_${format}`
    ].join(',')

    return `https://res.cloudinary.com/${cloudName}/image/upload/${transformations}/${publicId}`
  }

  const getVideoUrl = (publicId, options = {}) => {
    const {
      quality = 'auto',
      format = 'auto'
    } = options

    const transformations = [
      `q_${quality}`,
      `f_${format}`
    ].join(',')

    return `https://res.cloudinary.com/${cloudName}/video/upload/${transformations}/${publicId}`
  }

  return {
    getOptimizedImageUrl,
    getVideoUrl
  }
}
