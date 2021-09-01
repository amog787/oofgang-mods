.class Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity$1;
.super Ljava/lang/Object;
.source "AodSmartDisplaySettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity$1;->this$0:Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity$1;->this$0:Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;

    invoke-virtual {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->onBackPressed()V

    return-void
.end method
