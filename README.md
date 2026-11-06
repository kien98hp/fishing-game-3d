# 🎣 3D Fishing Diorama Game (Full Project & Online Web Deployment)

Dự án Game Câu Cá 3D nghệ thuật phong cách phác thảo mực & màu nước (Ink & Watercolor Sketchbook) chạy trực tiếp trên nền tảng Web. 

Thư mục này được đóng gói **toàn bộ 100% tài nguyên gốc của dự án** (bao gồm file gốc Blender 3D, file FBX nhân vật, cần câu, cá, mã nguồn web, và cấu hình Vercel) để bạn có thể:
1. **Lưu trữ toàn bộ dự án lên GitHub an toàn vĩnh viễn** mà không sợ mất file khi dọn dẹp máy tính.
2. **Deploy trang web online 24/7 hoàn toàn miễn phí** thông qua Vercel.

---

## 📁 CẤU TRÚC DỰ ÁN ĐÃ ĐƯỢC TỔ CHỨC GỌN GÀNG

```text
fishing-game-deploy/
├── 🌐 PHẦN CHẠY WEB ONLINE (Được Vercel sử dụng):
│   ├── index.html                   Trang chủ game web chính (tích hợp % tiến độ tải model 3D)
│   ├── Map.html                     Bản sao index.html (đảm bảo mọi link trực tiếp đều chạy tốt)
│   ├── character.glb                Mô hình 3D nhân vật cầm cần câu + toàn bộ animation
│   ├── fish.glb                     Mô hình 3D cá hồi bơi lội và giật câu
│   ├── foldchair.glb                Mô hình 3D ghế xếp dã ngoại
│   ├── vercel.json                  Cấu hình máy chủ Vercel (CORS, cache GLB 1 năm, MIME Type)
│   ├── .vercelignore                Chỉ thị Vercel bỏ qua file nguồn nặng khi deploy web
│   ├── .gitignore                   Loại bỏ tệp rác hệ thống khi commit git
│   ├── cors_server.py               Máy chủ offline để chạy thử trên máy tính
│   └── Chay_Game.bat                Nhấp đúp chuột để chạy game offline
│
└── 🗄️ source_assets/ (TOÀN BỘ TÀI NGUYÊN GỐC DỰ ÁN ĐỂ DỌN DẸP MÁY TÍNH):
    ├── blender/
    │   ├── Untitled.blend.part001   File gốc Blender 3D (214MB) được chia thành 3 phần < 80MB
    │   ├── Untitled.blend.part002   để vượt qua giới hạn 100MB của GitHub mà không cần Git LFS
    │   ├── Untitled.blend.part003
    │   └── KHOI_PHUC_BLENDER.bat    Nhấp đúp chuột là tự động ghép lại thành file gốc Untitled.blend
    │
    ├── models/
    │   ├── boy.fbx                  File FBX nhân vật gốc từ Mixamo
    │   ├── fixed_rod.glb            Mô hình 3D cần câu
    │   └── character_backup.glb     Bản sao lưu nhân vật
    │
    └── references/
        ├── Creating_character_image_prompt_aa243832_2K.jpg  Hình ảnh concept art gốc của nhân vật
        ├── Map bien.html            Mã nguồn bối cảnh Bờ Biển gốc để tham khảo
        └── HUONG_DAN.txt            Tài liệu hướng dẫn ban đầu
```

---

## 🚀 HƯỚNG DẪN 2 BƯỚC ĐẨY LÊN GITHUB & DEPLOY VERCEL

### BƯỚC 1: Đẩy Toàn Bộ Dự Án Lên GitHub
1. Vào **[GitHub](https://github.com/)** ➔ Nhấn dấu **`+`** (góc trên bên phải) ➔ Chọn **New repository**.
2. Đặt tên (ví dụ: `fishing-game-3d`), để chế độ **Public** ➔ Bấm **Create repository**.
3. Mở **PowerShell** hoặc **Terminal** tại thư mục `fishing-game-deploy` và gõ các lệnh sau:

```bash
# 1. Cài đặt tên và email của bạn cho Git (nếu chưa từng cấu hình)
git config user.name "Tên Của Bạn"
git config user.email "email-cua-ban@gmail.com"

# 2. Tạo commit cho toàn bộ dự án
git commit -m "Backup full project & deploy 3D Fishing Game"

# 3. Kết nối với repo GitHub vừa tạo (thay link repo của bạn vào)
git remote add origin https://github.com/<TEN_GITHUB_CUA_BAN>/fishing-game-3d.git

# 4. Đẩy toàn bộ lên GitHub
git push -u origin main
```
*Lưu ý: Tất cả các file nặng nhất đều đã được chia nhỏ dưới 80MB nên lệnh `git push` sẽ chạy suôn sẻ 100%, không bị GitHub báo lỗi chặn file lớn.*

---

### BƯỚC 2: Deploy Tự Động Lên Vercel
1. Truy cập **[Vercel](https://vercel.com/)** ➔ Đăng nhập bằng tài khoản **GitHub**.
2. Nhấn **Add New...** ➔ Chọn **Project**.
3. Chọn repo `fishing-game-3d` và nhấn **Import**.
4. Giữ nguyên toàn bộ cấu hình mặc định ➔ Nhấn **Deploy**.
5. Sau khoảng 30 giây, bạn sẽ nhận được đường link web chính thức dạng: `https://fishing-game-3d.vercel.app`.

---

## 🧹 HƯỚNG DẪN DỌN DẸP MÁY TÍNH AN TOÀN

Sau khi bạn đã chạy `git push` thành công lên GitHub:
* **Toàn bộ dự án đã nằm an toàn trên cloud của GitHub**.
* Bạn có thể **xóa thư mục `Game 0411`** và các file rải rác ngoài Desktop (`boy.fbx`, `character.glb`, `fish.glb`, `foldchair.glb`, `Map.html`, `Map bien.html`, `Creating_character...jpg`,...) để làm sạch Desktop của bạn.
* Nếu sau này bạn đổi máy tính hoặc cài lại Windows:
  1. Chỉ cần gõ: `git clone https://github.com/<TEN_GITHUB_CUA_BAN>/fishing-game-3d.git`
  2. Vào thư mục `source_assets/blender/` nhấp đúp chuột vào `KHOI_PHUC_BLENDER.bat` là có lại ngay file `Untitled.blend` gốc 214MB ban đầu để mở bằng Blender!
