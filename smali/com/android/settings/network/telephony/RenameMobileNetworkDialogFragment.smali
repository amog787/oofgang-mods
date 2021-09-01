.class public Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "RenameMobileNetworkDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;,
        Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;
    }
.end annotation


# instance fields
.field private mColorSpinner:Landroid/widget/Spinner;

.field private mColors:[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

.field private mNameView:Landroid/widget/EditText;

.field private mSubId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private getColors()[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;
    .locals 13

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10700a5

    .line 215
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 216
    sget v1, Lcom/android/settings/R$array;->color_picker:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 217
    sget v2, Lcom/android/settings/R$dimen;->color_swatch_size:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 218
    sget v3, Lcom/android/settings/R$dimen;->color_swatch_stroke_width:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 219
    array-length v9, v0

    new-array v10, v9, [Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    const/4 v3, 0x0

    move v11, v3

    :goto_0
    if-ge v11, v9, :cond_0

    .line 221
    new-instance v12, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    aget-object v4, v1, v11

    aget v5, v0, v11

    const/4 v8, 0x0

    move-object v3, v12

    move v6, v2

    move v7, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;-><init>(Ljava/lang/String;IIILcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$1;)V

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-object v10
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 118
    iget-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mNameView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubId:I

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;II)I

    .line 120
    iget-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColorSpinner:Landroid/widget/Spinner;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColors:[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    goto :goto_0

    .line 121
    :cond_0
    iget-object p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColors:[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    aget-object p1, p2, p1

    .line 122
    :goto_0
    iget-object p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->access$000(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)I

    move-result p1

    iget p0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubId:I

    invoke-virtual {p2, p1, p0}, Landroid/telephony/SubscriptionManager;->setIconTint(II)I

    return-void
.end method

.method public static newInstance(I)Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;
    .locals 2

    .line 70
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "subscription_id"

    .line 71
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    new-instance p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;-><init>()V

    .line 73
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method protected getColorSpinnerView()Landroid/widget/Spinner;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColorSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x66a

    return p0
.end method

.method protected getNameView()Landroid/widget/EditText;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mNameView:Landroid/widget/EditText;

    return-object p0
.end method

.method protected getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 84
    const-class p0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method protected getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 79
    const-class p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public synthetic lambda$onCreateDialog$0$RenameMobileNetworkDialogFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->getSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "subscription_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubId:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 108
    invoke-direct {p0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->getColors()[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColors:[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    .line 110
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 113
    sget v1, Lcom/android/settings/R$layout;->dialog_mobile_network_rename:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->populateView(Landroid/view/View;)V

    .line 115
    sget v1, Lcom/android/settings/R$string;->mobile_network_sim_name:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->mobile_network_sim_name_rename:I

    new-instance v1, Lcom/android/settings/network/telephony/-$$Lambda$RenameMobileNetworkDialogFragment$32uZAtr_w5Fn719afgZJG1yBu8g;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/-$$Lambda$RenameMobileNetworkDialogFragment$32uZAtr_w5Fn719afgZJG1yBu8g;-><init>(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;)V

    .line 117
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000

    .line 124
    invoke-virtual {p1, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method protected populateView(Landroid/view/View;)V
    .locals 5

    .line 130
    sget v0, Lcom/android/settings/R$id;->name_edittext:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mNameView:Landroid/widget/EditText;

    .line 132
    iget-object v0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 133
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 136
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget v3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubId:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "got null SubscriptionInfo for mSubId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenameMobileNetwork"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 146
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 147
    iget-object v2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 149
    iget-object v2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mNameView:Landroid/widget/EditText;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 152
    :cond_3
    sget v0, Lcom/android/settings/R$id;->color_spinner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColorSpinner:Landroid/widget/Spinner;

    .line 153
    new-instance v0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->dialog_mobile_network_color_picker_item:I

    iget-object v4, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColors:[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;-><init>(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;Landroid/content/Context;I[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)V

    .line 155
    iget-object v2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColorSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v0, 0x0

    move v2, v0

    .line 156
    :goto_1
    iget-object v3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColors:[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 157
    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->access$000(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 158
    iget-object v3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mColorSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 163
    :cond_5
    :goto_2
    sget v2, Lcom/android/settings/R$id;->operator_name_value:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 164
    iget-object v3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mSubId:I

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 165
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    sget v2, Lcom/android/settings/R$id;->number_label:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 169
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v0, 0x8

    :cond_6
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    sget v0, Lcom/android/settings/R$id;->number_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/settingslib/DeviceInfoUtils;->getBidiFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
