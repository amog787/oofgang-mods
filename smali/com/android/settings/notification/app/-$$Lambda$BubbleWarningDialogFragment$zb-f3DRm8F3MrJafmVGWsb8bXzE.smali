.class public final synthetic Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$zb-f3DRm8F3MrJafmVGWsb8bXzE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/BubbleWarningDialogFragment;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$zb-f3DRm8F3MrJafmVGWsb8bXzE;->f$0:Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$zb-f3DRm8F3MrJafmVGWsb8bXzE;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$zb-f3DRm8F3MrJafmVGWsb8bXzE;->f$2:I

    iput p4, p0, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$zb-f3DRm8F3MrJafmVGWsb8bXzE;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$zb-f3DRm8F3MrJafmVGWsb8bXzE;->f$0:Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

    iget-object v1, p0, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$zb-f3DRm8F3MrJafmVGWsb8bXzE;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$zb-f3DRm8F3MrJafmVGWsb8bXzE;->f$2:I

    iget v3, p0, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$zb-f3DRm8F3MrJafmVGWsb8bXzE;->f$3:I

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/notification/app/BubbleWarningDialogFragment;->lambda$onCreateDialog$0$BubbleWarningDialogFragment(Ljava/lang/String;IILandroid/content/DialogInterface;I)V

    return-void
.end method
