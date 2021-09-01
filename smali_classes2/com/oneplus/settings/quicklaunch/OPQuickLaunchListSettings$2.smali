.class Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$2;
.super Ljava/lang/Object;
.source "OPQuickLaunchListSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->configureDragAndDrop(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$2;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 167
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oneplus.action.QUICKPAY_LAUNCH_CATEGORY_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$2;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
