.class Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;
.super Landroid/widget/BaseAdapter;
.source "NfcPaymentPreferenceController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcPaymentPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcPaymentAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/nfc/NfcPaymentPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/nfc/NfcPaymentPreferenceController;Landroid/content/Context;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string p1, "layout_inflater"

    .line 187
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private synthetic lambda$getView$0(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    return-void
.end method

.method private makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 2

    .line 288
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNfcUicc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-boolean v0, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isUicc:Z

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->access$200(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/settings/nfc/NfcUiccUtils;->enableUnUICC(Landroid/content/Context;Landroid/content/ComponentName;)Z

    .line 291
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->access$300(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Lcom/android/settings/nfc/PaymentBackend;

    move-result-object v0

    iget-object p1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->access$400(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/settings/nfc/NfcUiccUtils;->enableUICC(Landroid/content/Context;Ljava/lang/String;)Z

    .line 294
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-static {p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->access$300(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Lcom/android/settings/nfc/PaymentBackend;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 297
    :cond_1
    iget-boolean v0, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-nez v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->access$300(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Lcom/android/settings/nfc/PaymentBackend;

    move-result-object v0

    iget-object p1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 302
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-static {p0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->access$500(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Lcom/android/settings/nfc/NfcPaymentPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 304
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz p0, :cond_0

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItem(I)Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->getItem(I)Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 217
    iget-object p2, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settings/R$layout;->nfc_payment_option:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 219
    new-instance p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;-><init>(Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;Lcom/android/settings/nfc/NfcPaymentPreferenceController$1;)V

    .line 222
    sget v1, Lcom/android/settings/R$id;->nfc_payment_pref:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->root:Landroid/view/View;

    .line 223
    sget v1, Lcom/android/settings/R$id;->payment_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    .line 224
    sget v1, Lcom/android/settings/R$id;->banner:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 226
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;

    .line 239
    :goto_0
    iget-object v1, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v1, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 241
    iget-object v1, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v1, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->root:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->description:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    iget-object v2, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 246
    :cond_1
    iget-object v1, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    iget-object v2, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :goto_1
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-static {v1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->access$100(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/nfc/NfcUiccUtils;->getUICCDefaultAppInfo(Landroid/content/Context;)Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v1

    .line 250
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNfcUicc()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 251
    iget-object v2, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    iget-object v1, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_2

    .line 254
    :cond_2
    iget-object v1, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_2

    .line 257
    :cond_3
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    iget-boolean v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 260
    :goto_2
    iget-object p3, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->root:Landroid/view/View;

    new-instance v0, Lcom/android/settings/nfc/-$$Lambda$NfcPaymentPreferenceController$NfcPaymentAdapter$1O_ueURy_L8vAJNwiw6CODVX88A;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/nfc/-$$Lambda$NfcPaymentPreferenceController$NfcPaymentAdapter$1O_ueURy_L8vAJNwiw6CODVX88A;-><init>(Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public synthetic lambda$getView$0$NfcPaymentPreferenceController$NfcPaymentAdapter(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->lambda$getView$0(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 276
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 277
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 283
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    return-void
.end method

.method public updateApps([Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 194
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
