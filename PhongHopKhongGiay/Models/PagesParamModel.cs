namespace PhongHopKhongGiay.Models
{
    public class PagesParamModel
    {
        private int pageSize;
        private int pageIndex;

        public int PageSize
        {
            get
            {
                return pageSize;
            }

            set
            {
                pageSize = value;
            }
        }

        public int PageIndex
        {
            get
            {
                return pageIndex;
            }

            set
            {
                pageIndex = value;
            }
        }
    }
}