.class Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "VrDisplayPreferencePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/VrDisplayPreferencePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VrCandidateInfo"
.end annotation


# instance fields
.field public final label:Ljava/lang/String;

.field public final value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x1

    .line 85
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 86
    iput p2, p0, Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;->value:I

    .line 87
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vr_display_pref_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;->value:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;->label:Ljava/lang/String;

    return-object p0
.end method
