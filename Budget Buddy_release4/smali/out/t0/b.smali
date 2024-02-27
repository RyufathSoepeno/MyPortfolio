.class public Lt0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lr0/g;

.field private final b:Landroid/content/Context;

.field final c:Lr0/g$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr0/g;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt0/b$a;

    invoke-direct {v0, p0}, Lt0/b$a;-><init>(Lt0/b;)V

    iput-object v0, p0, Lt0/b;->c:Lr0/g$b;

    iput-object p1, p0, Lt0/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lt0/b;->a:Lr0/g;

    invoke-virtual {p2, v0}, Lr0/g;->c(Lr0/g$b;)V

    return-void
.end method

.method static synthetic a(Lt0/b;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lt0/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Locale;
    .registers 7

    const/16 v0, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    array-length v1, p0

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x1

    if-le v1, v4, :cond_26

    aget-object v1, p0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_26

    aget-object v1, p0, v4

    const/4 v4, 0x2

    goto :goto_27

    :cond_26
    move-object v1, v3

    :goto_27
    array-length v5, p0

    if-le v5, v4, :cond_3d

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v2, :cond_3d

    aget-object v2, p0, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x3

    if-gt v2, v5, :cond_3d

    aget-object v3, p0, v4

    :cond_3d
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v0, v3, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public c(Ljava/util/List;)Ljava/util/Locale;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Locale;"
        }
    .end annotation

    if-eqz p1, :cond_170

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_170

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_b7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lt0/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Ld/g;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v3, :cond_a9

    invoke-virtual {v1, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    const-string v8, "-"

    if-nez v7, :cond_55

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_55
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_75

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_75
    new-instance v7, Ljava/util/Locale$LanguageRange;

    invoke-direct {v7, v6}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/Locale$LanguageRange;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/Locale$LanguageRange;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-*"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_a9
    invoke-static {v0, p1}, Lt0/a;->a(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_b0

    return-object v0

    :cond_b0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    return-object p1

    :cond_b7
    const/16 v1, 0x18

    if-lt v0, v1, :cond_12c

    iget-object v0, p0, Lt0/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Ld/g;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_ca
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v1, v3, :cond_b0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_eb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d8

    return-object v5

    :cond_eb
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_ef
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ef

    return-object v5

    :cond_10a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_129

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10e

    return-object v5

    :cond_129
    add-int/lit8 v1, v1, 0x1

    goto :goto_ca

    :cond_12c
    iget-object v0, p0, Lt0/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_b0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_151

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13e

    return-object v3

    :cond_151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_155
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_155

    return-object v3

    :cond_170
    :goto_170
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Landroid/content/res/Configuration;)V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_20

    invoke-static {p1}, Ld/g;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_25

    invoke-virtual {p1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_20
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    iget-object p1, p0, Lt0/b;->a:Lr0/g;

    invoke-virtual {p1, v0}, Lr0/g;->b(Ljava/util/List;)V

    return-void
.end method
