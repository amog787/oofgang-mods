.class public final synthetic Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$hpUUW_Jm1ATEk1-GeQASyreqYZI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$hpUUW_Jm1ATEk1-GeQASyreqYZI;->f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodPreference$hpUUW_Jm1ATEk1-GeQASyreqYZI;->f$0:Lcom/android/settingslib/inputmethod/InputMethodPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->lambda$showSecurityWarnDialog$2$InputMethodPreference(Landroid/content/DialogInterface;)V

    return-void
.end method
