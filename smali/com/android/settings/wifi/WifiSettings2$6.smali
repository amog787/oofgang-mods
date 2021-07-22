.class Lcom/android/settings/wifi/WifiSettings2$6;
.super Ljava/lang/Object;
.source "WifiSettings2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings2;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings2;

.field final synthetic val$editIfNoConfig:Z

.field final synthetic val$fullScreenEdit:Z

.field final synthetic val$wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings2;Lcom/android/wifitrackerlib/WifiEntry;ZZ)V
    .locals 0

    .line 1102
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings2$6;->this$0:Lcom/android/settings/wifi/WifiSettings2;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings2$6;->val$wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iput-boolean p3, p0, Lcom/android/settings/wifi/WifiSettings2$6;->val$editIfNoConfig:Z

    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiSettings2$6;->val$fullScreenEdit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1107
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings2$6;->val$wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings2$6;->this$0:Lcom/android/settings/wifi/WifiSettings2;

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings2$6;->val$editIfNoConfig:Z

    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiSettings2$6;->val$fullScreenEdit:Z

    invoke-direct {v0, v1, p2, v2, p0}, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;-><init>(Lcom/android/settings/wifi/WifiSettings2;Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    invoke-virtual {p2, v0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    .line 1109
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
