.class Lcom/oneplus/settings/OPScreenResolutionAdjust$2;
.super Ljava/lang/Object;
.source "OPScreenResolutionAdjust.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPScreenResolutionAdjust;->showWarnigDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPScreenResolutionAdjust;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPScreenResolutionAdjust;I)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust$2;->this$0:Lcom/oneplus/settings/OPScreenResolutionAdjust;

    iput p2, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust$2;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 298
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 299
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust$2;->this$0:Lcom/oneplus/settings/OPScreenResolutionAdjust;

    invoke-static {p1}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->access$100(Lcom/oneplus/settings/OPScreenResolutionAdjust;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 300
    iget p2, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust$2;->val$mode:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "oneplus_screen_resolution_auto_adjust"

    .line 299
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust$2;->this$0:Lcom/oneplus/settings/OPScreenResolutionAdjust;

    iget p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust$2;->val$mode:I

    invoke-static {p1, p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->access$200(Lcom/oneplus/settings/OPScreenResolutionAdjust;I)V

    return-void
.end method
