.class Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;
.super Ljava/lang/Object;
.source "ValidatedEditTextPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ValidatedEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/ValidatedEditTextPreference;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/ValidatedEditTextPreference;Lcom/android/settings/widget/ValidatedEditTextPreference$1;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-static {p1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->access$100(Lcom/android/settings/widget/ValidatedEditTextPreference;)Landroid/widget/EditText;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-static {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->access$200(Lcom/android/settings/widget/ValidatedEditTextPreference;)Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    .line 140
    iget-object p0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-static {p0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->access$200(Lcom/android/settings/widget/ValidatedEditTextPreference;)Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;->isTextValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 143
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
