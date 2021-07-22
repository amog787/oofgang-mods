.class Lcom/android/settings/wifi/WifiSettings2$5;
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


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings2;)V
    .locals 0

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1099
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
