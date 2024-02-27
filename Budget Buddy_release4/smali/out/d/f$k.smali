.class Ld/f$k;
.super Ld/f$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field private final c:Ld/m;

.field final synthetic d:Ld/f;


# direct methods
.method constructor <init>(Ld/f;Ld/m;)V
    .registers 3

    iput-object p1, p0, Ld/f$k;->d:Ld/f;

    invoke-direct {p0, p1}, Ld/f$j;-><init>(Ld/f;)V

    iput-object p2, p0, Ld/f$k;->c:Ld/m;

    return-void
.end method


# virtual methods
.method b()Landroid/content/IntentFilter;
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Ld/f$k;->c:Ld/m;

    invoke-virtual {v0}, Ld/m;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_b

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Ld/f$k;->d:Ld/f;

    invoke-virtual {v0}, Ld/f;->F()Z

    return-void
.end method
