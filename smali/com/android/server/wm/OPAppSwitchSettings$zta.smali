.class Lcom/android/server/wm/OPAppSwitchSettings$zta;
.super Landroid/os/FileObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OPAppSwitchSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/wm/OPAppSwitchSettings;

.field private zta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OPAppSwitchSettings;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchSettings$zta;->you:Lcom/android/server/wm/OPAppSwitchSettings;

    const/16 p1, 0x8

    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchSettings$zta;->zta:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchSettings;->access$000()Z

    move-result v0

    const-string v1, "OPAppSwitchSettings"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent event = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "path = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 p2, 0x8

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchSettings$zta;->zta:Ljava/lang/String;

    const-string p2, "data/oneplus/ads/appswitch/sys_app_switch_config.xml"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "mFocusPath APP_SWITCH_CONFIG_FILE_PATH!"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchSettings$zta;->you:Lcom/android/server/wm/OPAppSwitchSettings;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/wm/OPAppSwitchSettings;->access$100(Lcom/android/server/wm/OPAppSwitchSettings;Z)V

    :cond_1
    return-void
.end method
