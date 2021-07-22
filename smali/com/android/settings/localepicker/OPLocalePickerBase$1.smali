.class Lcom/android/settings/localepicker/OPLocalePickerBase$1;
.super Landroid/widget/ArrayAdapter;
.source "OPLocalePickerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/OPLocalePickerBase;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fieldId:I

.field final synthetic val$inflater:Landroid/view/LayoutInflater;

.field final synthetic val$layoutId:I

.field final synthetic val$localeInfos:Ljava/util/List;

.field final synthetic val$mDefault:Ljava/util/Locale;


# direct methods
.method constructor <init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;IILjava/util/List;Ljava/util/Locale;)V
    .locals 0

    .line 211
    iput-object p5, p0, Lcom/android/settings/localepicker/OPLocalePickerBase$1;->val$inflater:Landroid/view/LayoutInflater;

    iput p6, p0, Lcom/android/settings/localepicker/OPLocalePickerBase$1;->val$layoutId:I

    iput p7, p0, Lcom/android/settings/localepicker/OPLocalePickerBase$1;->val$fieldId:I

    iput-object p8, p0, Lcom/android/settings/localepicker/OPLocalePickerBase$1;->val$localeInfos:Ljava/util/List;

    iput-object p9, p0, Lcom/android/settings/localepicker/OPLocalePickerBase$1;->val$mDefault:Ljava/util/Locale;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 217
    iget-object p2, p0, Lcom/android/settings/localepicker/OPLocalePickerBase$1;->val$inflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/settings/localepicker/OPLocalePickerBase$1;->val$layoutId:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 218
    iget p3, p0, Lcom/android/settings/localepicker/OPLocalePickerBase$1;->val$fieldId:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    .line 219
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    .line 224
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;

    .line 225
    invoke-virtual {v1}, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v1}, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setTextLocale(Ljava/util/Locale;)V

    .line 228
    iget-object v1, p0, Lcom/android/settings/localepicker/OPLocalePickerBase$1;->val$localeInfos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;

    iget-object p1, p1, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->locale:Ljava/util/Locale;

    iget-object p0, p0, Lcom/android/settings/localepicker/OPLocalePickerBase$1;->val$mDefault:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 229
    invoke-virtual {p3, p0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    .line 231
    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_1
    return-object p2
.end method
