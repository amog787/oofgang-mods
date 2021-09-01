.class Lcom/oneplus/settings/controllers/OPThemeIconPackPreferenceController$IntentCategory;
.super Ljava/lang/Object;
.source "OPThemeIconPackPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/controllers/OPThemeIconPackPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCategory"
.end annotation


# instance fields
.field actionId:I

.field categoryString:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p1, p0, Lcom/oneplus/settings/controllers/OPThemeIconPackPreferenceController$IntentCategory;->actionId:I

    .line 157
    iput-object p2, p0, Lcom/oneplus/settings/controllers/OPThemeIconPackPreferenceController$IntentCategory;->categoryString:Ljava/lang/String;

    return-void
.end method
