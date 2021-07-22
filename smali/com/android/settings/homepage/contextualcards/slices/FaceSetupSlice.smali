.class public Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;
.super Ljava/lang/Object;
.source "FaceSetupSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFaceManager:Landroid/hardware/face/FaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static buildRowBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;Landroid/content/Intent;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-static {p3, v0, p4, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 145
    invoke-static {p3, p2, v0, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p3

    .line 148
    new-instance p4, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {p4}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 149
    invoke-virtual {p4, p2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 150
    invoke-virtual {p4, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 151
    invoke-virtual {p4, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 152
    invoke-virtual {p4, p3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    return-object p4
.end method

.method public static getReEnrollSetting(Landroid/content/Context;I)I
    .locals 2

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_unlock_re_enroll"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 130
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 129
    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/security/SecuritySettings;

    .line 133
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->security_settings_face_settings_enroll:I

    .line 135
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x579

    const-string v4, "face_settings"

    .line 132
    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 139
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 7

    .line 80
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/settings/slices/CustomSliceRegistry;->FACE_ENROLL_SLICE_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v4, v2, v3}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 83
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setIsError(Z)Landroidx/slice/builders/ListBuilder;

    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 86
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 87
    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v4, v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v4

    .line 88
    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->getReEnrollSetting(Landroid/content/Context;I)I

    move-result v0

    if-nez v4, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->security_settings_face_settings_enroll:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->security_settings_face_settings_context_subtitle:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_should_re_enroll_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->security_settings_face_enroll_should_re_enroll_subtitle:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 105
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_must_re_enroll_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->security_settings_face_enroll_must_re_enroll_subtitle:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 114
    :goto_0
    new-instance v4, Landroidx/slice/builders/ListBuilder;

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/settings/slices/CustomSliceRegistry;->FACE_ENROLL_SLICE_URI:Landroid/net/Uri;

    invoke-direct {v4, v5, v6, v2, v3}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    .line 116
    invoke-static {v2}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    .line 117
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$drawable;->ic_face_24dp:I

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    .line 118
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->buildRowBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;Landroid/content/Intent;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 119
    invoke-virtual {v4}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 110
    :cond_3
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/FaceSetupSlice;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/settings/slices/CustomSliceRegistry;->FACE_ENROLL_SLICE_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v4, v2, v3}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 111
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setIsError(Z)Landroidx/slice/builders/ListBuilder;

    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 124
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->FACE_ENROLL_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method
