.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;
.super Ljava/lang/Object;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showWarnigDialog(Landroid/hardware/fingerprint/Fingerprint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

.field final synthetic val$fingerprint:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;->val$fingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 312
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 313
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$100(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 314
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;->val$fingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$400(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/hardware/fingerprint/Fingerprint;)V

    .line 315
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$100(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x2

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
