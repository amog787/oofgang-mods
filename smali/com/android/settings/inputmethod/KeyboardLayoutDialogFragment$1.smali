.class Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$1;
.super Ljava/lang/Object;
.source "KeyboardLayoutDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$1;->this$0:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$1;->this$0:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-static {p0, p2}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->access$000(Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;I)V

    return-void
.end method
