.class Lcom/android/settings/wifi/dpp/WifiDppBaseActivity$1;
.super Ljava/lang/Object;
.source "WifiDppBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppBaseActivity$1;->this$0:Lcom/android/settings/wifi/dpp/WifiDppBaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
