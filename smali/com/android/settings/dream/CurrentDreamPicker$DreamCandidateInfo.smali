.class final Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "CurrentDreamPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dream/CurrentDreamPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DreamCandidateInfo"
.end annotation


# instance fields
.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final key:Ljava/lang/String;

.field private final name:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 1

    const/4 v0, 0x1

    .line 103
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 105
    iget-object v0, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;->name:Ljava/lang/CharSequence;

    .line 106
    iget-object v0, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object p1, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;->key:Ljava/lang/String;

    return-object p0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/settings/dream/CurrentDreamPicker$DreamCandidateInfo;->name:Ljava/lang/CharSequence;

    return-object p0
.end method
