.class public final synthetic Landroid/os/LocaleList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public static native synthetic forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method


# virtual methods
.method public native synthetic equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public native synthetic get(I)Ljava/util/Locale;
.end method

.method public native synthetic size()I
.end method
