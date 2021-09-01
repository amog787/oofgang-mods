.class public Lcom/android/settingslib/widget/FooterPreference$Builder;
.super Ljava/lang/Object;
.source "FooterPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/widget/FooterPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKey:Ljava/lang/String;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/settingslib/widget/FooterPreference$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settingslib/widget/FooterPreference;
    .locals 2

    .line 129
    new-instance v0, Lcom/android/settingslib/widget/FooterPreference;

    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreference$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreference$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreference$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreference$Builder;->mKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    iget-object p0, p0, Lcom/android/settingslib/widget/FooterPreference$Builder;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    :cond_0
    return-object v0

    .line 132
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Footer title cannot be empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTitle(I)Lcom/android/settingslib/widget/FooterPreference$Builder;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/settingslib/widget/FooterPreference$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/widget/FooterPreference$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/android/settingslib/widget/FooterPreference$Builder;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/settingslib/widget/FooterPreference$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
