.class Ld/f$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# direct methods
.method static a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4

    invoke-static {p0}, Ld/g;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object p0

    invoke-static {p1}, Ld/g;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    invoke-static {p2, v0}, Ld/h;->a(Landroid/content/res/Configuration;Landroid/os/LocaleList;)V

    iget-object p0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p0, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_15
    return-void
.end method
