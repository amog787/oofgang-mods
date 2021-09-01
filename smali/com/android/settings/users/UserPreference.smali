.class public Lcom/android/settings/users/UserPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "UserPreference.java"


# static fields
.field static final DELETE_ID:I

.field public static final SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/users/UserPreference;",
            ">;"
        }
    .end annotation
.end field

.field static final SETTINGS_ID:I


# instance fields
.field private mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mSerialNumber:I

.field private mSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Lcom/android/settings/users/-$$Lambda$UserPreference$UpIm-ioqp9l2DqerpjWaO9lbHRs;->INSTANCE:Lcom/android/settings/users/-$$Lambda$UserPreference$UpIm-ioqp9l2DqerpjWaO9lbHRs;

    sput-object v0, Lcom/android/settings/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    .line 65
    sget v0, Lcom/android/settings/R$id;->manage_user:I

    sput v0, Lcom/android/settings/users/UserPreference;->SETTINGS_ID:I

    .line 66
    sget v0, Lcom/android/settings/R$id;->trash_user:I

    sput v0, Lcom/android/settings/users/UserPreference;->DELETE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/16 v3, -0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    const/16 p1, -0xa

    .line 64
    iput p1, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    if-nez p5, :cond_0

    if-eqz p4, :cond_1

    .line 77
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->restricted_preference_user_delete_widget:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 79
    :cond_1
    iput-object p5, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 80
    iput-object p4, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 81
    iput p3, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->useAdminDisabledSummary(Z)V

    return-void
.end method

.method private canDeleteUser()Z
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 153
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "no_remove_user"

    .line 152
    invoke-static {p0, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private dimIcon(Z)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 p1, 0x66

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 89
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private getSerialNumber()I
    .locals 2

    .line 157
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 p0, -0x80000000

    return p0

    .line 158
    :cond_0
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_3

    .line 160
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_1

    const p0, 0x7fffffff

    return p0

    :cond_1
    const/16 v1, -0xb

    if-ne v0, v1, :cond_2

    const p0, 0x7ffffffe

    return p0

    .line 165
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    .line 166
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_3

    .line 167
    iget p0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    return p0

    .line 169
    :cond_3
    iget p0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    return p0
.end method

.method static synthetic lambda$static$0(Lcom/android/settings/users/UserPreference;Lcom/android/settings/users/UserPreference;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    .line 51
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/users/UserPreference;->getSerialNumber()I

    move-result p0

    .line 52
    invoke-direct {p1}, Lcom/android/settings/users/UserPreference;->getSerialNumber()I

    move-result p1

    if-ge p0, p1, :cond_2

    return v0

    :cond_2
    if-le p0, p1, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getUserId()I
    .locals 0

    .line 173
    iget p0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 109
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    .line 111
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserPreference;->dimIcon(Z)V

    .line 112
    sget v1, Lcom/android/settings/R$id;->user_delete_widget:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 114
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-nez v0, :cond_5

    .line 117
    sget v0, Lcom/android/settings/R$id;->divider_delete:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    sget v1, Lcom/android/settings/R$id;->divider_manage:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 119
    sget v4, Lcom/android/settings/R$id;->trash_user:I

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 121
    invoke-direct {p0}, Lcom/android/settings/users/UserPreference;->canDeleteUser()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 122
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {v4, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 128
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_3
    :goto_1
    sget v0, Lcom/android/settings/R$id;->manage_user:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 133
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_4

    .line 134
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 143
    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 3

    .line 95
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserPreference;->canDeleteUser()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 104
    :cond_1
    iget-object p0, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method
