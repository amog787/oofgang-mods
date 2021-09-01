.class Lcom/android/settings/wifi/WifiSettings2$WifiConnectActionListener;
.super Ljava/lang/Object;
.source "WifiSettings2.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiConnectActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings2;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiSettings2;)V
    .locals 0

    .line 1047
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings2$WifiConnectActionListener;->this$0:Lcom/android/settings/wifi/WifiSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings2;Lcom/android/settings/wifi/WifiSettings2$1;)V
    .locals 0

    .line 1047
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings2$WifiConnectActionListener;-><init>(Lcom/android/settings/wifi/WifiSettings2;)V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 1055
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings2$WifiConnectActionListener;->this$0:Lcom/android/settings/wifi/WifiSettings2;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiSettings2;->access$200(Lcom/android/settings/wifi/WifiSettings2;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1058
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2$WifiConnectActionListener;->this$0:Lcom/android/settings/wifi/WifiSettings2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_failed_connect_message:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1059
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1050
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2$WifiConnectActionListener;->this$0:Lcom/android/settings/wifi/WifiSettings2;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/wifi/WifiSettings2;->access$102(Lcom/android/settings/wifi/WifiSettings2;Z)Z

    return-void
.end method
