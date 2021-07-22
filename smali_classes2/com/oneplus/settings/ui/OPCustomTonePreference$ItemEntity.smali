.class Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;
.super Ljava/lang/Object;
.source "OPCustomTonePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomTonePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemEntity"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field resId:I

.field selected:Z


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;Ljava/lang/String;II)V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 332
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    .line 324
    iput-object p2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->name:Ljava/lang/String;

    .line 325
    iput p3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->resId:I

    return-void
.end method
