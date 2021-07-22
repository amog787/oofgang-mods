.class Lcom/oneplus/settings/OPScreenResolutionAdjust$1;
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


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPScreenResolutionAdjust;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust$1;->this$0:Lcom/oneplus/settings/OPScreenResolutionAdjust;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 306
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 307
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust$1;->this$0:Lcom/oneplus/settings/OPScreenResolutionAdjust;

    invoke-static {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->access$000(Lcom/oneplus/settings/OPScreenResolutionAdjust;)V

    return-void
.end method
