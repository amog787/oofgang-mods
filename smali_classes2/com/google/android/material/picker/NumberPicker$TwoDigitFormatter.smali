.class Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Lcom/google/android/material/picker/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoDigitFormatter"
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/Object;

.field final mBuilder:Ljava/lang/StringBuilder;

.field mFmt:Ljava/util/Formatter;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 169
    iput-object v0, p0, Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    .line 172
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 173
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    return-void
.end method

.method private createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;
    .locals 1

    .line 191
    new-instance v0, Ljava/util/Formatter;

    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method

.method private init(Ljava/util/Locale;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;->createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 2

    .line 181
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 182
    invoke-direct {p0, v0}, Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 184
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 185
    iget-object p1, p0, Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    const-string v1, "%02d"

    invoke-virtual {p1, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 186
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
