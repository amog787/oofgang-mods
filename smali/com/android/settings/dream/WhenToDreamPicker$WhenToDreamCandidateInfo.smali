.class final Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "WhenToDreamPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dream/WhenToDreamPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WhenToDreamCandidateInfo"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/dream/WhenToDreamPicker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 104
    iput-object p2, p0, Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;->name:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;->key:Ljava/lang/String;

    return-object p0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;->name:Ljava/lang/String;

    return-object p0
.end method
