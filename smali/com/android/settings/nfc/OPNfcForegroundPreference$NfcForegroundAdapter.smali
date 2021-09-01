.class Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPNfcForegroundPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/OPNfcForegroundPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcForegroundAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/OPNfcForegroundPreference;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$getView$0(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->setForegroundMode(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$000(Lcom/android/settings/nfc/OPNfcForegroundPreference;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$000(Lcom/android/settings/nfc/OPNfcForegroundPreference;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {v0}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$000(Lcom/android/settings/nfc/OPNfcForegroundPreference;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 120
    iget-object p2, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {p2}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$100(Lcom/android/settings/nfc/OPNfcForegroundPreference;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/android/settings/R$layout;->op_item_nfc_foreground_option:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 122
    new-instance p3, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;-><init>(Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;)V

    .line 123
    sget v2, Lcom/android/settings/R$id;->nfc_foreground_pref:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p3, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->root:Landroid/view/View;

    .line 124
    sget v2, Lcom/android/settings/R$id;->foreground_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p3, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    .line 125
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;

    .line 129
    :goto_0
    iget-object v2, p3, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {v2}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$200(Lcom/android/settings/nfc/OPNfcForegroundPreference;)Lcom/android/settings/nfc/PaymentBackend;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_1
    if-ne p1, v3, :cond_2

    :goto_1
    move p1, v3

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-eqz p1, :cond_3

    .line 144
    iget-object p1, p3, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_3

    .line 146
    :cond_3
    iget-object p1, p3, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->title:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 149
    :goto_3
    iget-object p1, p3, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter$ViewHolder;->root:Landroid/view/View;

    new-instance p3, Lcom/android/settings/nfc/-$$Lambda$OPNfcForegroundPreference$NfcForegroundAdapter$qNvWbnsR7zJv3EuWuzylUkURco4;

    invoke-direct {p3, p0, v0}, Lcom/android/settings/nfc/-$$Lambda$OPNfcForegroundPreference$NfcForegroundAdapter$qNvWbnsR7zJv3EuWuzylUkURco4;-><init>(Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public synthetic lambda$getView$0$OPNfcForegroundPreference$NfcForegroundAdapter(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->lambda$getView$0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method setForegroundMode(Ljava/lang/String;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {v0, p1}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$300(Lcom/android/settings/nfc/OPNfcForegroundPreference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-static {v1}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$200(Lcom/android/settings/nfc/OPNfcForegroundPreference;)Lcom/android/settings/nfc/PaymentBackend;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    if-eqz p1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$400(Lcom/android/settings/nfc/OPNfcForegroundPreference;Ljava/lang/String;)Z

    goto :goto_1

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/android/settings/nfc/OPNfcForegroundPreference;->access$500(Lcom/android/settings/nfc/OPNfcForegroundPreference;Ljava/lang/String;)Z

    .line 171
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setForegroundMode newValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " foregroundMode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPNfcForegroundPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p0, p0, Lcom/android/settings/nfc/OPNfcForegroundPreference$NfcForegroundAdapter;->this$0:Lcom/android/settings/nfc/OPNfcForegroundPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 175
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method
