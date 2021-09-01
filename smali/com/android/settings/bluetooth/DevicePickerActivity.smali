.class public final Lcom/android/settings/bluetooth/DevicePickerActivity;
.super Lcom/oneplus/settings/BaseAppCompatActivity;
.source "DevicePickerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/oneplus/settings/BaseAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->setLightNavigationBar(Landroid/view/Window;I)V

    .line 39
    sget p1, Lcom/android/settings/R$layout;->bluetooth_device_picker:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    return-void
.end method
