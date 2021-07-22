.class Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$1;
.super Ljava/lang/Object;
.source "TrafficUsageSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$1;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$1;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
