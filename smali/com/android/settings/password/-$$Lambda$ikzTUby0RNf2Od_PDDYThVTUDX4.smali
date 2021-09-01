.class public final synthetic Lcom/android/settings/password/-$$Lambda$ikzTUby0RNf2Od_PDDYThVTUDX4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/-$$Lambda$ikzTUby0RNf2Od_PDDYThVTUDX4;->f$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/-$$Lambda$ikzTUby0RNf2Od_PDDYThVTUDX4;->f$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->onSkipOrClearButtonClick(Landroid/view/View;)V

    return-void
.end method
