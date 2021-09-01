.class Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7$2;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7$2;->this$1:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "android.app.extra.DISABLE_WARNING"

    .line 440
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 443
    :goto_0
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7$2;->this$1:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;->this$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->continueRemoveAction(Ljava/lang/CharSequence;)V

    return-void
.end method
