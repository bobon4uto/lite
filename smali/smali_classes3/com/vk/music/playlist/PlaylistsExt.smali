.class public final Lcom/vk/music/playlist/PlaylistsExt;
.super Ljava/lang/Object;
.source "PlaylistsExt.kt"


# direct methods
.method public static final a(Lcom/vk/dto/music/Playlist;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/vk/dto/music/Playlist;->D:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/vk/bridges/AuthBridge;->a()Lcom/vk/bridges/AuthBridge3;

    move-result-object v0

    iget v2, p0, Lcom/vk/dto/music/Playlist;->b:I

    invoke-interface {v0, v2}, Lcom/vk/bridges/AuthBridge3;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/vk/dto/music/Playlist;->f:Lcom/vk/dto/music/PlaylistLink;

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/vk/dto/music/Playlist;->e:Lcom/vk/dto/music/PlaylistLink;

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/vk/bridges/AuthBridge;->a()Lcom/vk/bridges/AuthBridge3;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vk/dto/music/PlaylistLink;->b()I

    move-result p0

    invoke-interface {v1, p0}, Lcom/vk/bridges/AuthBridge3;->b(I)Z

    move-result p0

    xor-int/2addr v0, p0

    :cond_3
    return v0
.end method

.method public static final b(Lcom/vk/dto/music/Playlist;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/vk/music/playlist/PlaylistsExt;->h(Lcom/vk/dto/music/Playlist;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/vk/music/playlist/PlaylistsExt;->g(Lcom/vk/dto/music/Playlist;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/vk/music/playlist/PlaylistsExt;->c(Lcom/vk/dto/music/Playlist;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final c(Lcom/vk/dto/music/Playlist;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/vk/music/playlist/PlaylistsExt;->h(Lcom/vk/dto/music/Playlist;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/vk/bridges/GroupsBridge;->a()Lcom/vk/bridges/GroupsBridge1;

    move-result-object v0

    iget p0, p0, Lcom/vk/dto/music/Playlist;->b:I

    invoke-interface {v0, p0}, Lcom/vk/bridges/GroupsBridge1;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final d(Lcom/vk/dto/music/Playlist;)Lcom/vk/dto/music/Playlist;
    .locals 1

    .line 1
    invoke-static {}, Lcom/vk/bridges/AuthBridge;->a()Lcom/vk/bridges/AuthBridge3;

    move-result-object v0

    invoke-interface {v0}, Lcom/vk/bridges/AuthBridge3;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vk/dto/music/Playlist;->h(I)Lcom/vk/dto/music/Playlist;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lcom/vk/dto/music/Playlist;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vk/dto/music/Playlist;->L:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vk/dto/music/Artist;

    .line 4
    invoke-virtual {v3}, Lcom/vk/dto/music/Artist;->B1()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vk/dto/music/Playlist;->d:Ljava/lang/String;

    const-string v3, "main_only"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 5
    :goto_2
    iget-object p0, p0, Lcom/vk/dto/music/Playlist;->K:Ljava/util/List;

    if-eqz p0, :cond_6

    .line 6
    instance-of v3, p0, Ljava/util/Collection;

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vk/dto/music/Artist;

    .line 8
    invoke-virtual {v3}, Lcom/vk/dto/music/Artist;->B1()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 p0, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p0, 0x0

    :goto_4
    if-nez p0, :cond_8

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_5
    return v1
.end method

.method public static final f(Lcom/vk/dto/music/Playlist;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/vk/dto/music/Playlist;->K:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/dto/music/Artist;

    .line 4
    invoke-virtual {v1}, Lcom/vk/dto/music/Artist;->A1()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static final g(Lcom/vk/dto/music/Playlist;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/vk/dto/music/Playlist;->f:Lcom/vk/dto/music/PlaylistLink;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/vk/bridges/AuthBridge;->a()Lcom/vk/bridges/AuthBridge3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vk/dto/music/PlaylistLink;->b()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/vk/bridges/AuthBridge3;->b(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final h(Lcom/vk/dto/music/Playlist;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/vk/bridges/AuthBridge;->a()Lcom/vk/bridges/AuthBridge3;

    move-result-object v0

    iget p0, p0, Lcom/vk/dto/music/Playlist;->b:I

    invoke-interface {v0, p0}, Lcom/vk/bridges/AuthBridge3;->b(I)Z

    move-result p0

    return p0
.end method

.method public static final i(Lcom/vk/dto/music/Playlist;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://vk.ru/music?z=audio_playlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vk/dto/music/Playlist;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vk/dto/music/Playlist;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/dto/music/Playlist;->Q:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const-string p0, ""

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vk/dto/music/Playlist;->Q:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
