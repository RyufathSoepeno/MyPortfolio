.class Landroidx/appcompat/widget/g1;
.super Lr/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/g1$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private final p:Landroidx/appcompat/widget/SearchView;

.field private final q:Landroid/app/SearchableInfo;

.field private final r:Landroid/content/Context;

.field private final s:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final t:I

.field private u:Z

.field private v:I

.field private w:Landroid/content/res/ColorStateList;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/appcompat/widget/SearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getSuggestionRowLayout()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lr/c;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/g1;->u:Z

    iput v2, p0, Landroidx/appcompat/widget/g1;->v:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/g1;->x:I

    iput v0, p0, Landroidx/appcompat/widget/g1;->y:I

    iput v0, p0, Landroidx/appcompat/widget/g1;->z:I

    iput v0, p0, Landroidx/appcompat/widget/g1;->A:I

    iput v0, p0, Landroidx/appcompat/widget/g1;->B:I

    iput v0, p0, Landroidx/appcompat/widget/g1;->C:I

    iput-object p2, p0, Landroidx/appcompat/widget/g1;->p:Landroidx/appcompat/widget/SearchView;

    iput-object p3, p0, Landroidx/appcompat/widget/g1;->q:Landroid/app/SearchableInfo;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->getSuggestionCommitIconResId()I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/g1;->t:I

    iput-object p1, p0, Landroidx/appcompat/widget/g1;->r:Landroid/content/Context;

    iput-object p4, p0, Landroidx/appcompat/widget/g1;->s:Ljava/util/WeakHashMap;

    return-void
.end method

.method private A(Landroid/database/Cursor;)V
    .registers 3

    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    if-eqz p1, :cond_f

    const-string v0, "in_progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    :cond_f
    return-void
.end method

.method private j(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/g1;->s:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private k(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10

    iget-object v0, p0, Landroidx/appcompat/widget/g1;->w:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_23

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lr/a;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lc/a;->J:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v1, p0, Lr/a;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/g1;->w:Landroid/content/res/ColorStateList;

    :cond_23
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/appcompat/widget/g1;->w:Landroid/content/res/ColorStateList;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v2, 0x21

    invoke-virtual {v0, v7, v1, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private l(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 8

    const-string v0, "SuggestionsAdapter"

    iget-object v1, p0, Lr/a;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    :try_start_b
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_f} :catch_44

    invoke-virtual {v2}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v4

    if-nez v4, :cond_16

    return-object v3

    :cond_16
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v5, v4, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid icon resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3f
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_43
    return-object v1

    :catch_44
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3f
.end method

.method private m(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 5

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/g1;->s:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    iget-object p1, p0, Landroidx/appcompat/widget/g1;->s:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez p1, :cond_18

    goto :goto_22

    :cond_18
    iget-object v0, p0, Landroidx/appcompat/widget/g1;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_22
    return-object v2

    :cond_23
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/g1;->l(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2a

    goto :goto_2e

    :cond_2a
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    :goto_2e
    iget-object v1, p0, Landroidx/appcompat/widget/g1;->s:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static n(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/g1;->v(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private o()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/g1;->q:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/g1;->m(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    iget-object v0, p0, Lr/a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private p(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 8

    const-string v0, "Error closing icon stream for "

    const-string v1, "SuggestionsAdapter"

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.resource"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_f} :catch_85

    if-eqz v3, :cond_2d

    :try_start_11
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/g1;->q(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_15} :catch_16
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_15} :catch_85

    return-object p1

    :catch_16
    :try_start_16
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    iget-object v3, p0, Landroidx/appcompat/widget/g1;->r:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_37} :catch_85

    if-eqz v3, :cond_6e

    :try_start_39
    invoke-static {v3, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_55

    :try_start_3d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_54

    :catch_41
    move-exception v3

    :try_start_42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_54} :catch_85

    :goto_54
    return-object v4

    :catchall_55
    move-exception v4

    :try_start_56
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_6d

    :catch_5a
    move-exception v3

    :try_start_5b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6d
    throw v4

    :cond_6e
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_85
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_85} :catch_85

    :catch_85
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private r(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_70

    :cond_12
    :try_start_12
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/appcompat/widget/g1;->r:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/appcompat/widget/g1;->j(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3c

    return-object v3

    :cond_3c
    iget-object v3, p0, Landroidx/appcompat/widget/g1;->r:Landroid/content/Context;

    invoke-static {v3, v1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Landroidx/appcompat/widget/g1;->z(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_45} :catch_5d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_45} :catch_46

    return-object v1

    :catch_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Icon resource not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SuggestionsAdapter"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_5d
    nop

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/g1;->j(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_65

    return-object v0

    :cond_65
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/g1;->p(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/g1;->z(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_70
    :goto_70
    return-object v0
.end method

.method private s(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 4

    iget v0, p0, Landroidx/appcompat/widget/g1;->A:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 p1, 0x0

    return-object p1

    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/g1;->r(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_12

    return-object p1

    :cond_12
    invoke-direct {p0}, Landroidx/appcompat/widget/g1;->o()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private t(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 4

    iget v0, p0, Landroidx/appcompat/widget/g1;->B:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 p1, 0x0

    return-object p1

    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/g1;->r(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private static v(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    const-string p1, "SuggestionsAdapter"

    const-string v1, "unexpected error retrieving valid column from cursor, did the remote process die?"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private x(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p2, :cond_9

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    :cond_9
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, p3, p3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 p1, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :goto_14
    return-void
.end method

.method private y(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    const/16 p2, 0x8

    goto :goto_d

    :cond_c
    const/4 p2, 0x0

    :goto_d
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private z(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p2, :cond_b

    iget-object v0, p0, Landroidx/appcompat/widget/g1;->s:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .registers 4

    iget-boolean v0, p0, Landroidx/appcompat/widget/g1;->u:Z

    const-string v1, "SuggestionsAdapter"

    if-eqz v0, :cond_11

    const-string v0, "Tried to change cursor after adapter was closed."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_10

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_10
    return-void

    :cond_11
    :try_start_11
    invoke-super {p0, p1}, Lr/a;->a(Landroid/database/Cursor;)V

    if-eqz p1, :cond_4d

    const-string v0, "suggest_text_1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/g1;->x:I

    const-string v0, "suggest_text_2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/g1;->y:I

    const-string v0, "suggest_text_2_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/g1;->z:I

    const-string v0, "suggest_icon_1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/g1;->A:I

    const-string v0, "suggest_icon_2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/g1;->B:I

    const-string v0, "suggest_flags"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/g1;->C:I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_46} :catch_47

    goto :goto_4d

    :catch_47
    move-exception p1

    const-string v0, "error changing cursor and caching columns"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4d
    :goto_4d
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5

    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_9

    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_9
    iget-object v0, p0, Landroidx/appcompat/widget/g1;->p:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_31

    iget-object v0, p0, Landroidx/appcompat/widget/g1;->p:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_31

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Landroidx/appcompat/widget/g1;->q:Landroid/app/SearchableInfo;

    const/16 v2, 0x32

    invoke-virtual {p0, v0, p1, v2}, Landroidx/appcompat/widget/g1;->u(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_31

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_28} :catch_29

    return-object p1

    :catch_29
    move-exception p1

    const-string v0, "SuggestionsAdapter"

    const-string v2, "Search suggestions query threw an exception."

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    :goto_31
    return-object v1
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const-string v1, "suggest_intent_query"

    invoke-static {p1, v1}, Landroidx/appcompat/widget/g1;->n(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    return-object v1

    :cond_d
    iget-object v1, p0, Landroidx/appcompat/widget/g1;->q:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "suggest_intent_data"

    invoke-static {p1, v1}, Landroidx/appcompat/widget/g1;->n(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    return-object v1

    :cond_1e
    iget-object v1, p0, Landroidx/appcompat/widget/g1;->q:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "suggest_text_1"

    invoke-static {p1, v1}, Landroidx/appcompat/widget/g1;->n(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2f

    return-object p1

    :cond_2f
    return-object v0
.end method

.method public d(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 10

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/g1$a;

    iget p2, p0, Landroidx/appcompat/widget/g1;->C:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_11

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_12

    :cond_11
    const/4 p2, 0x0

    :goto_12
    iget-object v1, p1, Landroidx/appcompat/widget/g1$a;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_21

    iget v1, p0, Landroidx/appcompat/widget/g1;->x:I

    invoke-static {p3, v1}, Landroidx/appcompat/widget/g1;->v(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroidx/appcompat/widget/g1$a;->a:Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Landroidx/appcompat/widget/g1;->y(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_21
    iget-object v1, p1, Landroidx/appcompat/widget/g1$a;->b:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_5e

    iget v1, p0, Landroidx/appcompat/widget/g1;->z:I

    invoke-static {p3, v1}, Landroidx/appcompat/widget/g1;->v(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/g1;->k(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3a

    :cond_34
    iget v1, p0, Landroidx/appcompat/widget/g1;->y:I

    invoke-static {p3, v1}, Landroidx/appcompat/widget/g1;->v(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    :goto_3a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, p1, Landroidx/appcompat/widget/g1$a;->a:Landroid/widget/TextView;

    if-eqz v4, :cond_59

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v4, p1, Landroidx/appcompat/widget/g1$a;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_59

    :cond_4d
    iget-object v4, p1, Landroidx/appcompat/widget/g1$a;->a:Landroid/widget/TextView;

    if-eqz v4, :cond_59

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v4, p1, Landroidx/appcompat/widget/g1$a;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_59
    :goto_59
    iget-object v4, p1, Landroidx/appcompat/widget/g1$a;->b:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1}, Landroidx/appcompat/widget/g1;->y(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_5e
    iget-object v1, p1, Landroidx/appcompat/widget/g1$a;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_6a

    invoke-direct {p0, p3}, Landroidx/appcompat/widget/g1;->s(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {p0, v1, v4, v5}, Landroidx/appcompat/widget/g1;->x(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    :cond_6a
    iget-object v1, p1, Landroidx/appcompat/widget/g1$a;->d:Landroid/widget/ImageView;

    const/16 v4, 0x8

    if-eqz v1, :cond_77

    invoke-direct {p0, p3}, Landroidx/appcompat/widget/g1;->t(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, v1, p3, v4}, Landroidx/appcompat/widget/g1;->x(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    :cond_77
    iget p3, p0, Landroidx/appcompat/widget/g1;->v:I

    if-eq p3, v2, :cond_87

    if-ne p3, v3, :cond_81

    and-int/2addr p2, v3

    if-eqz p2, :cond_81

    goto :goto_87

    :cond_81
    iget-object p1, p1, Landroidx/appcompat/widget/g1$a;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9c

    :cond_87
    :goto_87
    iget-object p2, p1, Landroidx/appcompat/widget/g1$a;->e:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p1, Landroidx/appcompat/widget/g1$a;->e:Landroid/widget/ImageView;

    iget-object p3, p1, Landroidx/appcompat/widget/g1$a;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p1, Landroidx/appcompat/widget/g1$a;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_9c
    return-void
.end method

.method public g(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lr/c;->g(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroidx/appcompat/widget/g1$a;

    invoke-direct {p2, p1}, Landroidx/appcompat/widget/g1$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget p2, Lc/f;->q:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget p3, p0, Landroidx/appcompat/widget/g1;->t:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p1
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lr/a;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    const-string p2, "SuggestionsAdapter"

    const-string v0, "Search suggestions cursor threw exception."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p2, p0, Lr/a;->h:Landroid/content/Context;

    iget-object v0, p0, Lr/a;->g:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, p3}, Lr/c;->f(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_26

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/g1$a;

    iget-object p3, p3, Landroidx/appcompat/widget/g1$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lr/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    const-string p2, "SuggestionsAdapter"

    const-string v0, "Search suggestions cursor threw exception."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p2, p0, Lr/a;->h:Landroid/content/Context;

    iget-object v0, p0, Lr/a;->g:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, p3}, Landroidx/appcompat/widget/g1;->g(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_26

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/g1$a;

    iget-object p3, p3, Landroidx/appcompat/widget/g1$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    return-object p2
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lr/a;->b()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/g1;->A(Landroid/database/Cursor;)V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .registers 2

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    invoke-virtual {p0}, Lr/a;->b()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/g1;->A(Landroid/database/Cursor;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidx/appcompat/widget/g1;->p:Landroidx/appcompat/widget/SearchView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView;->Q(Ljava/lang/CharSequence;)V

    :cond_f
    return-void
.end method

.method q(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 9

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ba

    :try_start_a
    iget-object v1, p0, Lr/a;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_14} :catch_a3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_44

    :try_start_22
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_57

    :catch_2d
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Single path segment is not a resource ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    const/4 v6, 0x2

    if-ne v3, v6, :cond_75

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_57
    if-eqz v0, :cond_5e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_5e
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No resource found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "More than two path segments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8c
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_a3
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package found for authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ba
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method u(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2d
    const-string v2, "search_suggest_query"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3f

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v0, p1

    goto :goto_42

    :cond_3f
    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_42
    move-object v7, v0

    if-lez p3, :cond_4e

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "limit"

    invoke-virtual {v1, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4e
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    iget-object p1, p0, Lr/a;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public w(I)V
    .registers 2

    iput p1, p0, Landroidx/appcompat/widget/g1;->v:I

    return-void
.end method
